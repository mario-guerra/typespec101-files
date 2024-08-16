import "@typespec/http";
import "@typespec/versioning";

using TypeSpec.Http;
using TypeSpec.Versioning;

@versioned(Versions)
namespace PetStore;

@error
model NotFoundError {
    code: "NOT_FOUND";
    message: string;
}

@error
model ValidationError {
    code: "VALIDATION_ERROR";
    message: string;
    details: string[];
}

@error
model InternalServerError {
  code: "INTERNAL_SERVER_ERROR";
  message: string;
}

@error
model UnauthorizedError {
  code: "UNAUTHORIZED";
  message: string;
}

@error
model InternalServerErrorResponse {
  @statusCode statusCode: 500;
  @body error: InternalServerError;
}