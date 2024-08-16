import "@typespec/http";
import "@typespec/versioning";
import "./models.tsp";

using TypeSpec.Http;
using TypeSpec.Versioning;

@versioned(Versions)
namespace PetStore;

model PetListResponse {
    ...OkResponse;
    ...Body<Pet[]>;
}

model PetResponse {
    ...OkResponse;
    ...Body<Pet>;
}

model PetCreatedResponse {
    ...CreatedResponse;
    ...Body<Pet>;
}

model PetErrorResponse {
    ...BadRequestResponse;
    ...Body<ValidationError>;
}

model PetNotFoundResponse {
    ...NotFoundResponse;
    ...Body<NotFoundError>;
}

model PetUnauthorizedResponse {
    ...UnauthorizedResponse;
    ...Body<UnauthorizedError>;
}

model PetSuccessResponse {
    ...OkResponse;
    ...Body<Pet>;
}

model PetNoContentResponse {
    ...NoContentResponse;
}

model PetAcceptedResponse {
    ...AcceptedResponse;
    ...Body<Pet>;
}

@added(Versions.v2)
model ToyListResponse {
  ...OkResponse;
  ...Body<Toy[]>;
}

@added(Versions.v2)
model ToyResponse {
  ...OkResponse;
  ...Body<Toy>;
} 

@added(Versions.v2)
model ToyCreatedResponse {
  ...CreatedResponse;
  ...Body<Toy>;
}

@added(Versions.v2)
model ToyErrorResponse {
  ...BadRequestResponse;
  ...Body<ValidationError>;
}

@added(Versions.v2)
model ToyUnauthorizedResponse {
  ...UnauthorizedResponse;
  ...Body<UnauthorizedError>;
}

@added(Versions.v2)
model ToyNotFoundResponse {
  ...NotFoundResponse;
  ...Body<NotFoundError>;
}

