# $OpenBSD: Makefile,v 1.27 2004/02/22 00:23:55 brad Exp $

COMMENT=	"SGI audiofile library clone"

DISTNAME=	audiofile-0.2.4
PKGNAME=	lib${DISTNAME}
CATEGORIES=	devel audio
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/audiofile/0.2/}

HOMEPAGE=	http://www.68k.org/~michael/audiofile/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}

do-regress:
	@cd ${WRKBUILD}/test && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} check

.include <bsd.port.mk>
