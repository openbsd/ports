# $OpenBSD: Makefile,v 1.25 2002/12/29 20:19:11 fgsch Exp $

COMMENT=	"SGI audiofile library clone"

DISTNAME=	audiofile-0.2.3
PKGNAME=	lib${DISTNAME}
CATEGORIES=	devel audio
MASTER_SITES=	ftp://oss.sgi.com/projects/audiofile/download/

HOMEPAGE=	http://oss.sgi.com/projects/audiofile/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

do-regress:
	@cd ${WRKBUILD}/test && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} check

.include <bsd.port.mk>
