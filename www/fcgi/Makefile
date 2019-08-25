# $OpenBSD: Makefile,v 1.34 2019/08/25 12:05:12 robert Exp $

COMMENT=		FastCGI Development Kit

DISTNAME=		fcgi-2.4.0
REVISION =		18
CATEGORIES=		www
SHARED_LIBS +=	fcgi                 0.0      # .0.0
SHARED_LIBS +=	fcgi++               1.0      # .1.0

HOMEPAGE=		http://www.fastcgi.com/

# See LICENSE.TERMS. Some source files (from the same authors) have other
# licenses but LICENSE.TERMS says "The following terms apply to all files
# associated with the Software and Documentation unless explicitly
# disclaimed in individual files". Also see analysis at
# http://www.fastcgi.com/archives/fastcgi-developers/2010-June/000559.html
PERMIT_PACKAGE=	Yes

RUN_DEPENDS =		www/p5-FCGI

WANTLIB=		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${HOMEPAGE}/dist/

CONFIGURE_STYLE=	gnu

CAT3_FILES=		FCGI_Accept FCGI_Finish FCGI_SetExitStatus \
			FCGI_StartFilterData

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/cgi-fcgi.1 ${PREFIX}/man/cat1/cgi-fcgi.0
.for file in ${CAT3_FILES}
	${INSTALL_MAN} ${WRKSRC}/doc/${file}.3 ${PREFIX}/man/cat3/${file}.0
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fcgi
	${INSTALL_DATA} ${WRKSRC}/doc/*.htm* ${WRKSRC}/doc/*.gif \
	${PREFIX}/share/doc/fcgi

.include <bsd.port.mk>
