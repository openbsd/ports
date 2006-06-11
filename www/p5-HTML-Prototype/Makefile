# $OpenBSD: Makefile,v 1.3 2006/06/11 15:06:50 espie Exp $

COMMENT=	'AJAX framework for perl'
CATEGORIES=	www p5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}
MASTER_SITES0=	http://script.aculo.us/dist/
DISTNAME=	HTML-Prototype-1.45

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		scriptaculous-js-1.6.1.tar.gz:0

PKGNAME=	p5-${DISTNAME}p0
PKG_ARCH=	*
HOMEPAGE=	http://prototype.conio.net/

post-extract:
	PROTODIR=${WRKDIST} ACULOUSDIR=${WRKDIR}/scriptaculous-js-1.6.1 perl ${FILESDIR}/update Controls src/controls DragDrop src/dragdrop Effects src/effects Js lib/prototype

# Perl licence, javascript code is MIT like
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

CONFIGURE_STYLE=	perl modbuild

BUILD_DEPENDS=	::www/p5-HTML-Tree ::devel/p5-Class-Accessor
RUN_DEPENDS=	::www/p5-HTML-Tree ::devel/p5-Class-Accessor

REGRESS_DEPENDS=::devel/p5-Test-Pod-Coverage
MAKE_ENV+=	TEST_POD=Yes


.include <bsd.port.mk>
