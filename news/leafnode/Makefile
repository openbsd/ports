# $OpenBSD: Makefile,v 1.22 2002/10/21 16:49:06 marcm Exp $

COMMENT=		"USENET software package designed for small sites"

VERSION=		1.9.27
DISTNAME=		leafnode-${VERSION}.rel
PKGNAME=		leafnode-${VERSION}
CATEGORIES=		news

HOMEPAGE=		http://www.leafnode.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL/LGPL/Other
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=leafnode/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		pcre::devel/pcre

SYSCONFDIR=		/etc/leafnode
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--localstatedir=/var
CONFIGURE_ARGS+=	--with-lockfile=/var/spool/news/fetchnews.lck
CONFIGURE_ARGS+=	--with-ipv6

post-install:
	@$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/leafnode && \
	cd ${WRKSRC} && \
	$(INSTALL_DATA) README README-FQDN INSTALL FAQ.txt \
		${PREFIX}/share/doc/leafnode
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/leafnode && \
	mv ${WRKINST}/${SYSCONFDIR}/config.example \
		${PREFIX}/share/examples/leafnode/config && \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/leafnode/

.include <bsd.port.mk>
