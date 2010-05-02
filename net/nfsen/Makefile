# $OpenBSD: Makefile,v 1.1.1.1 2010/05/02 20:52:32 sthen Exp $

MULTI_PACKAGES=		-main -web
COMMENT-main=		web-based front end for the nfdump netflow tools
COMMENT-web=		html/php parts for nfsen

V=			1.3.2
DISTNAME=		nfsen-$V
PKGNAME-main=		${DISTNAME}
PKGNAME-web=		nfsen-web-$V
CATEGORIES=		net www
HOMEPAGE=		http://nfsen.sourceforge.net/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=nfsen/}

MODULES=		perl
BUILD_DEPENDS=		:p5-RRD-*:net/rrdtool,-perl \
			::mail/p5-Mail-Tools \
			:nfprofile-*:net/nfdump,-nfprofile \
			:nfdump->=1.5.8p0:net/nfdump
RUN_DEPENDS-main=	${BUILD_DEPENDS} \
			:nfsen-web-$V:net/nfsen,-web
RUN_DEPENDS-web=	::www/php5/core

NO_BUILD=		Yes
NO_REGRESS=		Yes
PREFIX-web=		/var/www
PKG_ARCH=		*

post-extract:
	rm ${WRKSRC}/html/nfsen.php.orig # in the distfile

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/nfsen-dist.conf

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}/var/www/htdocs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nfsen
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/NfSen/installer-items
	cd ${WRKSRC} && INSTDIR=${WRKINST}/ ./install.pl etc/nfsen-dist.conf copy < /dev/null
	${INSTALL_DATA} ${WRKINST}/etc/nfsen.conf ${PREFIX}/share/examples/nfsen
	rm ${WRKINST}/etc/nfsen*
	${INSTALL_SCRIPT} ${WRKSRC}/install.pl ${PREFIX}/bin/install-nfsen.pl
	perl -pi \
	    -e 's,use lib "./libexec";,use lib "${TRUEPREFIX}/${P5SITE}/NfSen";,;' \
	    -e 's,use lib "./installer-items";,use lib "${TRUEPREFIX}/${P5SITE}/NfSen/installer-items";,' \
	    ${PREFIX}/bin/install-nfsen.pl
	${INSTALL_SCRIPT} ${WRKSRC}/installer-items/* ${PREFIX}/${P5SITE}/NfSen/installer-items
	chown -R ${SHAREOWN}:${SHAREGRP} ${WRKINST}/var/www/htdocs/nfsen ${PREFIX}/share/doc/nfsen
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/bin ${PREFIX}/lib ${PREFIX}/libdata

.include <bsd.port.mk>
