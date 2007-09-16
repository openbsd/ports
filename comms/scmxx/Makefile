# $OpenBSD: Makefile,v 1.5 2007/09/16 01:37:10 merdely Exp $
# $NetBSD: Makefile,v 1.18 2002/10/22 15:33:10 kleink Exp $

COMMENT=		data exchange utility for Siemens mobile phones

DISTNAME=		scmxx-0.8.0
CATEGORIES=		comms
HOMEPAGE=		http://www.hendrik-sattler.de/scmxx/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=scmxx/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext

WANTLIB=	c

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -DNO_NL_LANGINFO" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

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
