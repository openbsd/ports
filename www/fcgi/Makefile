COMMENT=	FastCGI Development Kit

GH_ACCOUNT=	FastCGI-Archives
GH_PROJECT=	fcgi2
GH_TAGNAME=	2.4.2
PKGNAME=	fcgi-${GH_TAGNAME}

CATEGORIES=	www
SHARED_LIBS +=	fcgi                 0.1      # .0.0
SHARED_LIBS +=	fcgi++               1.0      # .1.0

HOMEPAGE=	https://fastcgi-archives.github.io/

# See LICENSE.TERMS. Some source files (from the same authors) have other
# licenses but LICENSE.TERMS says "The following terms apply to all files
# associated with the Software and Documentation unless explicitly
# disclaimed in individual files". Also see analysis at
# http://www.fastcgi.com/archives/fastcgi-developers/2010-June/000559.html
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-FCGI

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc base-gcc

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.16

CAT3_FILES=	FCGI_Accept FCGI_Finish FCGI_SetExitStatus \
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
