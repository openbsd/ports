# $OpenBSD: Makefile,v 1.46 2020/03/20 16:44:26 naddy Exp $

COMMENT=	web-based front end for the nfdump netflow tools

V=		1.3.8
REVISION=	6
DISTNAME=	nfsen-$V
CATEGORIES=	net www
HOMEPAGE=	http://nfsen.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nfsen/}

MODULES=	perl lang/php
RUN_DEPENDS=	net/rrdtool \
		mail/p5-Mail-Tools \
		net/p5-Socket6 \
		net/nfdump,-nfprofile \
		net/nfdump>=1.6.9
BUILD_DEPENDS=	${RUN_DEPENDS}

NO_BUILD=	Yes
NO_TEST=	Yes
WWWDIR=		${WRKINST}/var/www/htdocs
PKG_ARCH=	*

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/etc/nfsen-dist.conf
	@cd ${WRKSRC}/html; [ -r index.php ] || echo \
	    '<?php header("Location: nfsen.php"); ?>' > index.php

# XXX installer requires /dev/log causing problems for ports builds in a jail

do-install:
	${INSTALL_DATA_DIR} ${WWWDIR}/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nfsen
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/NfSen/installer-items
	cd ${WRKSRC} && INSTPREFIX=${WRKINST}/ ./install.pl ./etc/nfsen-dist.conf copy < /dev/null
	${INSTALL_DATA} ${WRKINST}/etc/nfsen.conf ${PREFIX}/share/examples/nfsen
	rm ${WRKINST}/etc/nfsen*
	${INSTALL_SCRIPT} ${WRKSRC}/install.pl ${PREFIX}/bin/install-nfsen.pl
	perl -pi \
	    -e 's,use lib "./libexec";,use lib "${TRUEPREFIX}/${P5SITE}/NfSen";,;' \
	    -e 's,use lib "./installer-items";,use lib "${TRUEPREFIX}/${P5SITE}/NfSen/installer-items";,' \
	    ${PREFIX}/bin/install-nfsen.pl
	${INSTALL_SCRIPT} ${WRKSRC}/installer-items/* ${PREFIX}/${P5SITE}/NfSen/installer-items
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/PortTracker/PortTracker.pm ${PREFIX}/lib/nfsen/plugins/
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/PortTracker/PortTracker.php ${WWWDIR}/nfsen/plugins/
	-mv ${WWWDIR}/nfsen/conf.php ${WWWDIR}/nfsen/conf.php.dist
	find ${WRKINST} \( -name '*.orig' -o -name '._*' \) -delete
	chown -R ${SHAREOWN}:${SHAREGRP} ${WRKINST}/var/www/htdocs/nfsen
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/bin ${PREFIX}/lib ${PREFIX}/libdata

.include <bsd.port.mk>
