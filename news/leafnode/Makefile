# $OpenBSD: Makefile,v 1.15 2000/08/29 05:20:46 fgsch Exp $

DISTNAME=	leafnode-1.9.16
CATEGORIES=	news
NEED_VERSION=	1.310
MASTER_SITES=	ftp://wpxx02.toxi.uni-wuerzburg.de/pub/			\
		ftp://ftp.karlsruhe.org/pub/news/servers/leafnode/	\
		ftp://ftp.unixpower.org/pub/leafnode/			\
		ftp://ftp.stikman.com/pub/leafnode/			\
		ftp://ftp.gigabell.net/pub/leafnode/

MAINTAINER=	ports@openbsd.org

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
