# $OpenBSD: Makefile,v 1.2 2008/11/20 13:39:22 okan Exp $

COMMENT=	fully featured mod_perl content management system

VERSION=	7.3.21
DISTNAME=	webgui-${VERSION}-stable
PKGNAME=	WebGUI-${VERSION}p0
CATEGORIES=	www

HOMEPAGE=	http://www.plainblack.com/webgui

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pbwebgui/}

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

RUN_DEPENDS=	::archivers/p5-Archive-Zip \
		::converters/p5-JSON \
		::databases/p5-DBD-mysql \
		::databases/p5-ldap \
		::devel/p5-BSD-Resource \
		::devel/p5-Cache-Memcached \
		::devel/p5-Data-Structure-Util \
		::devel/p5-DateTime \
		::devel/p5-DateTime-Format-Strptime \
		::devel/p5-DateTime-Format-Mail \
		::devel/p5-Locale-US \
		::devel/p5-Log-Log4perl \
		::devel/p5-POE \
		::devel/p5-POE-Component-IKC \
		::devel/p5-Parse-PlainConfig \
		::devel/p5-Pod-Coverage \
		::devel/p5-Test-Deep \
		::devel/p5-Test-MockObject \
		::devel/p5-Tie-CPHash \
		::devel/p5-Tie-IxHash \
		::graphics/p5-Color-Calc \
		::graphics/ImageMagick \
		::mail/p5-MIME-tools \
		::misc/p5-Finance-Quote \
		::net/p5-Net-Subnets \
		::net/p5-POE-Component-Client-HTTP \
		::textproc/p5-Text-Aspell \
		::textproc/p5-XML-RSSLite \
		::textproc/p5-XML-Simple \
		::www/p5-HTML-Highlight \
		::www/p5-HTML-Parser \
		::www/p5-HTML-TagFilter \
		::www/p5-HTML-Template \
		::www/p5-HTML-Template-Expr \
		::www/p5-SOAP-Lite \
		::www/p5-Weather-Com \
		::www/p5-libapreq2 \
		::www/p5-libwww

NO_BUILD=	Yes
NO_REGRESS=	Yes

PREFIX=         /var/www
INSTDIR=        ${PREFIX}/WebGUI
SUBST_VARS=     INSTDIR

WRKSRC=		${WRKDIR}/WebGUI

SUBST_FILES=	docs/gotcha.txt docs/install.txt etc/WebGUI.conf.original \
		lib/WebGUI/Asset/Wobject/_NewWobject.skeleton \
		lib/WebGUI/Asset/_NewAsset.skeleton sbin/preload.perl

post-extract:
	cd ${WRKSRC} && perl -pi -e 's!/data/WebGUI!${INSTDIR}!g' ${SUBST_FILES}

do-install:
	mkdir ${INSTDIR}
	cd ${WRKSRC} && umask 022 && pax -rw . ${INSTDIR}

.include <bsd.port.mk>
