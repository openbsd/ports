# $OpenBSD: Makefile,v 1.52 2009/11/14 06:32:25 jakob Exp $

COMMENT=	SSL encryption wrapper for standard network daemons

VERSION=	4.28
DISTNAME=	stunnel-${VERSION}
PKGNAME=	${DISTNAME}
CATEGORIES=	security

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl util wrap z

HOMEPAGE=	http://www.stunnel.org/

MASTER_SITES=	ftp://stunnel.mirt.net/stunnel/ \
		http://www.stunnel.org/download/stunnel/src/ \
		http://mike.daewoo.com.pl/computer/stunnel/ \
		http://opensores.thebunker.net/pub/mirrors/stunnel/ \
		ftp://ftp.fu-berlin.de/unix/security/stunnel/ \
		ftp://ftp.uni-freiburg.de/pub/net/stunnel/ \
		ftp://ftp.all.de/pub2/unix/security/stunnel/

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-tcp-wrappers \
			--with-random=/dev/arandom \
			--with-ssl=/usr \
			--enable-ipv6 \
			--sysconfdir=${SYSCONFDIR} \
			--with-threads=fork \
			--localstatedir=/var \
			${CONFIGURE_SHARED}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/auto
NO_REGRESS=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/stunnel ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/doc/stunnel.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/stunnel
	${INSTALL_DATA} ${WRKBUILD}/tools/stunnel.conf-sample \
		${PREFIX}/share/examples/stunnel

.include <bsd.port.mk>
