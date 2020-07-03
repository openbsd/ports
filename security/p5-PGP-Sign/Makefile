# $OpenBSD: Makefile,v 1.28 2020/07/03 21:45:43 sthen Exp $

COMMENT=	perl module to create/verify PGP signatures

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	PGP-Sign-0.20
REVISION=	3
CATEGORIES=	security

# perl
PERMIT_PACKAGE=	Yes

FLAVORS=	pgp
FLAVOR?=

.if ${FLAVOR:Mpgp}
RUN_DEPENDS=	pgp->=5,<6:security/pgp5
CONFIGURE_ARGS=	PGPV="${LOCALBASE}/bin/pgpv" PGPS="${LOCALBASE}/bin/pgps" PGPSTYLE="PGP5"
.else
RUN_DEPENDS=	security/gnupg
CONFIGURE_ARGS=	PGP="${LOCALBASE}/bin/gpg" PGPSTYLE="GPG"
.endif

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
