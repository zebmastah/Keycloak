FROM quay.io/keycloak/keycloak:26.0.7

USER keycloak

WORKDIR /opt/keycloak

COPY --chmod=0755 entrypoint.sh /opt/keycloak/entrypoint.sh

ENTRYPOINT ["/opt/keycloak/entrypoint.sh"]
CMD ["start-dev"]
