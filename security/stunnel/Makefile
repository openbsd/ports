# $OpenBSD: Makefile,v 1.43 2006/08/09 18:44:08 sturm Exp $

COMMENT=	"SSL encryption wrapper for standard network daemons"

VERSION=	4.15
DISTNAME=	stunnel-${VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	security

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto pthread ssl util wrap z

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
