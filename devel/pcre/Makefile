# $OpenBSD: Makefile,v 1.8 2001/11/01 18:34:51 wilfried Exp $

COMMENT=	perl-compatible regular expression library

DISTNAME=	pcre-3.4
CATEGORIES=	devel
NEED_VERSION=	1.475

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= pcre

HOMEPAGE=	http://www.pcre.org/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
		patch-*

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

post-install:
	@strip ${PREFIX}/bin/pcregrep

.include <bsd.port.mk>
