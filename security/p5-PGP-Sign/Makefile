# $OpenBSD: Makefile,v 1.20 2010/11/20 17:22:44 espie Exp $

COMMENT=	perl module to create/verify PGP signatures

MODULES=	cpan
DISTNAME=	PGP-Sign-0.20
REVISION=	1
CATEGORIES=	security
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	pgp
FLAVOR?=

.if ${FLAVOR:L:Mpgp}
RUN_DEPENDS=	pgp->=5,<6:security/pgp5
CONFIGURE_ARGS=	PGPV="${LOCALBASE}/bin/pgpv" PGPS="${LOCALBASE}/bin/pgps" PGPSTYLE="PGP5"
.else
RUN_DEPENDS=	security/gnupg<2
CONFIGURE_ARGS=	PGP="${LOCALBASE}/bin/gpg" PGPSTYLE="GPG"
.endif

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
