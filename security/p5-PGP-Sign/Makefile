# $OpenBSD: Makefile,v 1.23 2013/02/09 14:49:52 sthen Exp $

COMMENT=	perl module to create/verify PGP signatures

MODULES=	cpan
DISTNAME=	PGP-Sign-0.20
REVISION=	2
CATEGORIES=	security
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
