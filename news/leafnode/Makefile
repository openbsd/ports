# $OpenBSD: Makefile,v 1.20 2001/10/28 13:05:48 espie Exp $

COMMENT=	"USENET software package designed for small sites"

DISTNAME=	leafnode-1.9.19
CATEGORIES=	news
NEED_VERSION=	1.402
MASTER_SITES=	ftp://wpxx02.toxi.uni-wuerzburg.de/pub/			\
		ftp://ftp.karlsruhe.org/pub/news/servers/leafnode/	\
		ftp://ftp.unixpower.org/pub/leafnode/			\
		ftp://ftp.stikman.com/pub/leafnode/			\
		ftp://ftp.gigabell.net/pub/leafnode/

HOMEPAGE=	http://www.leafnode.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= --sysconfdir=/etc/leafnode --localstatedir=/var

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/leafnode
	cd ${WRKSRC} && $(INSTALL_DATA) README INSTALL FAQ config.example \
	  ${PREFIX}/share/doc/leafnode

.include <bsd.port.mk>
