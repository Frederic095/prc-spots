output json

---

{
    correlationId: vars.metadata.correlationId,
    statusCode: vars.httpStatus,
    namespace: error.errorMessage.payload.namespace default error.errorType.namespace,
    identifier: error.errorMessage.payload.identifier default error.errorType.identifier,
    description: error.errorMessage.payload.description default vars.description default error.description

}