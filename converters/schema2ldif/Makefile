# $OpenBSD: Makefile,v 1.1.1.1 2022/02/22 23:08:01 kmos Exp $

COMMENT =	schema to ldif converter and manager

GH_ACCOUNT =	fusiondirectory
GH_PROJECT =	schema2ldif
GH_COMMIT =	5e107190f89ed4c708fe0d617ea396f4ca7d6f8b

DISTNAME =	schema2ldif-1.3pl20210902

CATEGORIES =	converters

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# BSD, GPL-2+
PERMIT_PACKAGE =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes

pre-patch:
	sed -i 's|/etc/ldap|/etc/openldap|g' \
		${WRKSRC}/bin/ldap-schema-manager \
		${WRKSRC}/man/ldap-schema-manager.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bin/{schema2ldif,ldap-schema-manager} \
		${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/{schema2ldif,ldap-schema-manager}.1 \
		${PREFIX}/man/man1

.include <bsd.port.mk>
