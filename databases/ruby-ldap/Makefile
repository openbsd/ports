COMMENT=	Ruby interface to some common LDAP libraries

PKGNAME=	ldap-0.9.20
REVISION=	2
DISTNAME=	ruby-${PKGNAME}
CATEGORIES=	databases

SITES.github=	https://github.com/bearded/ruby-ldap/commit/
PATCHFILES.github=	ruby-ldap-taint-fix{72a4a89b28a99560b018b78069b29632f362a7d0}.patch
PATCH_DIST_STRIP=	-p1

HOMEPAGE=	https://github.com/bearded/ruby-ldap

MAINTAINER=	Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

WANTLIB=		crypto pthread ssl ldap lber sasl2

LIB_DEPENDS=		databases/openldap

CONFIGURE_STYLE=	ruby gem ext

.include <bsd.port.mk>
