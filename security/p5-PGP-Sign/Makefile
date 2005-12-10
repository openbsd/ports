# $OpenBSD: Makefile,v 1.11 2005/12/10 13:28:07 steven Exp $

COMMENT=	"perl module to create/verify PGP signatures"

DISTNAME=	PGP-Sign-0.19
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=PGP/}

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
CONFIGURE_STYLE= perl

PKG_ARCH= *

.include <bsd.port.mk>
