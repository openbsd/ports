# $OpenBSD: Makefile,v 1.36 2001/09/28 06:02:15 pvalchev Exp $
# Uses pthreads (can but does not at the moment)

COMMENT=	"WWW and FTP proxy cache and accelerator"

DISTNAME=	squid-2.3.STABLE5
PKGNAME=	squid-2.3
CATEGORIES=	www
NEED_VERSION=	1.413
MASTER_SITES=	http://www.squid-cache.org/Versions/v2/2.3/ \
   		ftp://ftp.funet.fi/pub/mirrors/squid.nlanr.net/pub/squid-2/STABLE/
EXTRACT_SUFX=	-src.tar.gz
DIST_SUBDIR=	squid

HOMEPAGE=	http://www.squid-cache.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SYSCONFDIR=	/etc/squid
STATEDIR?=	/var/squid
SUBST_VARS=	STATEDIR

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/cfgaux
CONFIGURE_ARGS=	--localstatedir="${STATEDIR}" \
		--enable-heap-replacement

MAKE_FILE=	makefile

.include <bsd.port.mk>
