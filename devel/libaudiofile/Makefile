# $OpenBSD: Makefile,v 1.33 2006/10/28 11:19:21 espie Exp $

COMMENT=	"SGI audiofile library clone"

DISTNAME=	audiofile-0.2.6
PKGNAME=	lib${DISTNAME}p0
SHARED_LIBS +=	audiofile            0.2      # .0.2
CATEGORIES=	devel audio
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/audiofile/0.2/}

HOMEPAGE=	http://www.68k.org/~michael/audiofile/

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

USE_LIBTOOL=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}

do-regress:
	@cd ${WRKBUILD}/test && ${MAKE_PROGRAM} ${REGRESS_FLAGS} check

.include <bsd.port.mk>
