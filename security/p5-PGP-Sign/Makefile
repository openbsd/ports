# $OpenBSD: Makefile,v 1.6 2002/05/15 17:58:50 espie Exp $

COMMENT=	"perl module to create/verify PGP signatures"

DISTNAME=	PGP-Sign-0.16
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=PGP/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	pgp pgp5
FLAVOR?=	

.if ${FLAVOR:L:Mpgp}
RUN_DEPENDS=	::security/pgp
CONFIGURE_ARGS=	PGPV="${LOCALBASE}/bin/pgpv" PGPS="${LOCALBASE}/bin/pgps" PGPSTYLE="PGP"

.elif ${FLAVOR:L:Mpgp5}
RUN_DEPENDS=	::security/pgp5
CONFIGURE_ARGS=	PGPV="${LOCALBASE}/bin/pgpv" PGPS="${LOCALBASE}/bin/pgps" PGPSTYLE="PGP5"

.else
RUN_DEPENDS=	::security/gnupg
CONFIGURE_ARGS=	PGP="${LOCALBASE}/bin/gpg" PGPSTYLE="GPG"
.endif

BUILD_DEPENDS=	${RUN_DEPENDS}
CONFIGURE_STYLE= perl

.include <bsd.port.mk>
