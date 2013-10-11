# $OpenBSD: Makefile,v 1.12 2013/10/11 23:48:11 naddy Exp $

COMMENT=		data exchange utility for Siemens mobile phones

DISTNAME=		scmxx-0.8.0
REVISION=		1
CATEGORIES=		comms
HOMEPAGE=		http://www.hendrik-sattler.de/scmxx/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=scmxx/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext

WANTLIB=	c m

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -DNO_NL_LANGINFO" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes

DOCS=		doc_sources.txt gsm0338.txt gsmcharset.txt
SAMPLES=	sms.txt vCalendar.vcs vCard.vcf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scmxx \
	    ${PREFIX}/share/examples/scmxx
	cd ${WRKSRC}/docs && ${INSTALL_DATA} \
	    ${DOCS} ${PREFIX}/share/doc/scmxx
	cd ${WRKSRC}/examples && ${INSTALL_DATA} ${SAMPLES} \
	    ${PREFIX}/share/examples/scmxx

.include <bsd.port.mk>
