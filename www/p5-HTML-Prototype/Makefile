# $OpenBSD: Makefile,v 1.12 2013/03/11 11:44:45 espie Exp $

COMMENT=	AJAX framework for perl

MODULES=	cpan
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}
MASTER_SITES0=	http://script.aculo.us/dist/
DISTNAME=	HTML-Prototype-1.48
USE_GROFF =	Yes

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		scriptaculous-js-1.7.0.tar.gz:0

HOMEPAGE=	http://prototype.conio.net/

post-extract:
	PROTODIR=${WRKDIST} ACULOUSDIR=${WRKDIR}/scriptaculous-js-1.7.0 perl ${FILESDIR}/update Controls src/controls DragDrop src/dragdrop Effects src/effects Js lib/prototype

# Perl licence, javascript code is MIT like
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-HTML-Tree devel/p5-Class-Accessor

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
