# $OpenBSD: Makefile,v 1.1.1.1 2002/03/30 20:46:26 drahn Exp $

COMMENT=	"hfsplus filesystem access tool"

PKGNAME=	hfsplus-1.0.2
DISTNAME=	hfsplus_1.0.2.orig
WRKDIST=	${WRKDIR}/hfsplus
CATEGORIES=	misc 
NEED_VERSION=	1.402

PERMIT_DISTFILES_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_PACKAGE_CDROM=	No

MAINTAINER=	Dale Rahn <drahn@openbsd.org>

BUILD_DEPENDS=	::devel/autoconf \
		::devel/automake
LIB_DEPENDS=	utf8::misc/libutf8 

USE_GMAKE=	Yes

HOMEPAGE=	http://ftp.penguinppc.org/projects/hfsplus/
MASTER_SITES=	http://ftp.penguinppc.org/projects/hfsplus/

# actually uses automake/autoheader, but that is done in pre-configure now
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}

pre-configure:
	@cd ${WRKDIST} && ${MAKE_PROGRAM} -f Makefile.cvs all

.include <bsd.port.mk>
