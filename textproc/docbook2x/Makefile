COMMENT =	convert DocBook to man pages and Texinfo

DISTNAME =	docbook2X-0.8.8
PKGNAME =	${DISTNAME:L}
REVISION =	5

CATEGORIES =	textproc

HOMEPAGE =	http://docbook2x.sourceforge.net/

# MIT-like
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES = ${MASTER_SITE_SOURCEFORGE:=docbook2x/}

RUN_DEPENDS =		converters/libiconv \
			textproc/libxml \
			textproc/libxslt \
			textproc/p5-XML-SAX

BUILD_DEPENDS =		${RUN_DEPENDS}

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--datadir=${PREFIX}/share

# prevent conflict with docbook-utils
CONFIGURE_ARGS +=	--program-transform-name='s/docbook2/db2x_docbook2/'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/libxml2
	${INSTALL_DATA} ${FILESDIR}/docbook2X.spec ${PREFIX}/share/libxml2

.include <bsd.port.mk>
