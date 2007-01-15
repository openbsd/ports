# $OpenBSD: Makefile,v 1.12 2007/01/15 17:40:10 simon Exp $

COMMENT=	"perl module to create/verify PGP signatures"

MODULES=	cpan
DISTNAME=	PGP-Sign-0.19
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	pgp
FLAVOR?=

.if ${FLAVOR:L:Mpgp}
RUN_DEPENDS=	:pgp-5.*:security/pgp5
CONFIGURE_ARGS=	PGPV="${LOCALBASE}/bin/pgpv" PGPS="${LOCALBASE}/bin/pgps" PGPSTYLE="PGP5"

.else
RUN_DEPENDS=	:gnupg-*:security/gnupg
CONFIGURE_ARGS=	PGP="${LOCALBASE}/bin/gpg" PGPSTYLE="GPG"
.endif

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
