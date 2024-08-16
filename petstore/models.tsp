import "@typespec/http";
import "@typespec/versioning";

using TypeSpec.Http;
using TypeSpec.Versioning;

@versioned(Versions)
namespace PetStore;

enum Versions {
    v1: "1.0",
    v2: "2.0",
}

model Pet {
    id: int32;
    @minLength(1)
    name: string;
    @minValue(0)
    @maxValue(100)
    age: int32;
    kind: petType;
}

@added(Versions.v2)
model Toy {
  id: int32;
  name: string;
}

enum petType {
   dog: "dog",
   cat: "cat",
   fish: "fish",
   bird: "bird",
   reptile: "reptile",
}

model CommonParameters {
    @header
    requestID: string;

    @query
    locale?: string;

    @header
    clientVersion?: string;
}