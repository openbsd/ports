# $OpenBSD: Makefile,v 1.3 2004/11/21 22:29:51 espie Exp $
# $NetBSD: Makefile,v 1.18 2002/10/22 15:33:10 kleink Exp $

COMMENT=		data exchange utility for Siemens mobile phones

DISTNAME=		scmxx-0.6.3.8
CATEGORIES=		comms
HOMEPAGE=		http://www.hendrik-sattler.de/scmxx/

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=http://ma2geo.mathematik.uni-karlsruhe.de/~hendrik/scmxx/download/

MODULES=		converters/libiconv

MAKE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -DNO_NL_LANGINFO" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scmxx
	${INSTALL_DATA} ${WRKSRC}/docs/doc_sources.txt			\
	    ${PREFIX}/share/doc/scmxx
	${INSTALL_DATA} ${WRKSRC}/docs/gsm0338.txt			\
	    ${PREFIX}/share/doc/scmxx
	${INSTALL_DATA} ${WRKSRC}/docs/gsmcharset.txt			\
	    ${PREFIX}/share/doc/scmxx

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/scmxx
	${INSTALL_DATA} ${WRKSRC}/examples/phonebook			\
	    ${PREFIX}/share/examples/scmxx
	${INSTALL_DATA} ${WRKSRC}/examples/sms.txt			\
	    ${PREFIX}/share/examples/scmxx
	${INSTALL_DATA} ${WRKSRC}/examples/vCalendar.vcs		\
	    ${PREFIX}/share/examples/scmxx
	${INSTALL_DATA} ${WRKSRC}/examples/vCard.vcf			\
	    ${PREFIX}/share/examples/scmxx

.include <bsd.port.mk>
