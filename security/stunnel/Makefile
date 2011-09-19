# $OpenBSD: Makefile,v 1.59 2011/09/19 14:21:02 sthen Exp $

COMMENT=	SSL encryption wrapper for standard network daemons

DISTNAME=	stunnel-4.44
CATEGORIES=	security

MAINTAINER=     Stuart Henderson <sthen@openbsd.org>

# GPLv2+ with OpenSSL exemption
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto pthread ssl util wrap z

HOMEPAGE=	http://www.stunnel.org/

MASTER_SITES=	http://ftp.nluug.nl/pub/networking/stunnel/ \
		http://mirror.bit.nl/stunnel/ \
		ftp://ftp.stunnel.org/stunnel/

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-random=/dev/arandom \
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
USE_GROFF =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/stunnel ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/doc/stunnel.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/stunnel
	${INSTALL_DATA} ${WRKBUILD}/tools/stunnel.conf-sample \
		${PREFIX}/share/examples/stunnel

.include <bsd.port.mk>
