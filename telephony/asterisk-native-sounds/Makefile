# $OpenBSD: Makefile,v 1.3 2006/12/17 08:23:29 steven Exp $

PKG_ARCH=	*

CATEGORIES=	telephony
COMMENT=	"'native' (better) sound files for Asterisk open source PBX"
# Note: Do not confuse "sounds" with "native-sounds: the former goes
# beyond what comes with the Asterisk port, while the latter (this port)
# duplicates what comes with Asterisk but in different formats for performance.
# XXX Might someday do flavors other than ulaw

DISTNAME=	asterisk-native-sounds-20060209-01-ulaw
PKGNAME=	asterisk-native-sounds-1.2p0
EXTRACT_SUFX=	.tar.bz2
MASTER_SITES=	http://mirror.astlinux.org/sounds/
WRKDIST=	${WRKDIR}/sounds

HOMEPAGE=	http://www.astlinux.org/index.php?option=com_content&task=view&id=38&Itemid=43

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

# work around bogosity in distfile: tarred with non-x directories
post-extract:
	find ${WRKDIST} -type d -exec chmod a+x {} \;

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/asterisk
	cd ${WRKDIR} && cp -R ./sounds ${PREFIX}/share/asterisk

.include <bsd.port.mk>
