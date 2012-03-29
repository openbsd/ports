# $OpenBSD: Makefile,v 1.63 2012/03/29 13:38:49 sthen Exp $

COMMENT=	SSL encryption wrapper for standard network daemons

DISTNAME=	stunnel-4.50
REVISION=	0
CATEGORIES=	security

MAINTAINER=     Stuart Henderson <sthen@openbsd.org>

# GPLv2+ with OpenSSL exemption
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto pthread ssl util wrap z

HOMEPAGE=	http://www.stunnel.org/

MASTER_SITES=	http://ftp.nluug.nl/pub/networking/stunnel/archive/4.x/ \
		http://mirror.bit.nl/stunnel/archive/4.x/ \
		ftp://ftp.stunnel.org/stunnel/archive/4.x/

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-ssl=/usr \
			--with-threads=fork \
			--localstatedir=/var
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
