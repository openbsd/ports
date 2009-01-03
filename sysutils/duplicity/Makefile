# $OpenBSD: Makefile,v 1.4 2009/01/03 21:27:25 kili Exp $

COMMENT =	encrypted backup using rsync algorithm

MODPY_EGG_VERSION = 0.5.01
DISTNAME =	duplicity-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES =	sysutils

HOMEPAGE =	http://www.nongnu.org/duplicity/
MASTER_SITES =	http://savannah.nongnu.org/download/duplicity/ \
		http://download.savannah.gnu.org/releases/duplicity/ \
		http://nongnu.askapache.com/duplicity/ \
		http://nongnu.bigsearcher.com/duplicity/ \
		http://mirror.publicns.net/pub/nongnu/duplicity/ \
		http://nongnu.mirror.ironie.org/releases/duplicity/ \
		http://savannah.c3sl.ufpr.br/duplicity/ \
		http://savannah.releasenotes.org/duplicity/ \
		http://www.de-mirrors.de/nongnu/duplicity/ \
		http://ftp.cc.uoc.gr/mirrors/nongnu.org/duplicity/ \
		http://ftp.twaren.net/Unix/NonGNU/duplicity/
			
MAINTAINER =	Bruno Bigras <bruno@burnbox.net>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/python

LIB_DEPENDS +=	rsync::net/librsync
RUN_DEPENDS +=	::devel/py-pexpect \
		::net/py-boto \
		::net/ncftp \
		::security/py-gnupg

MAKE_ENV +=	LIBRSYNC_DIR=${LOCALBASE}

NO_REGRESS =	Yes

.include <bsd.port.mk>
