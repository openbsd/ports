# $OpenBSD: Makefile,v 1.25 2013/10/11 23:50:53 naddy Exp $

COMMENT=	perl module to create/verify PGP signatures

MODULES=	cpan
DISTNAME=	PGP-Sign-0.20
REVISION=	2
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes

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
