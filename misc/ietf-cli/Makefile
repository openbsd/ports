# $OpenBSD: Makefile,v 1.3 2019/07/12 20:47:51 sthen Exp $

COMMENT=	command-line tools to work with RFCs and Internet Drafts

DISTNAME=	ietf-cli-1.14

CATEGORIES=	misc net books

HOMEPAGE=	https://trac.tools.ietf.org/tools/ietf-cli/

# WTFPL
PERMIT_PACKAGE=	Yes

# packaged from http://svn.tools.ietf.org/svn/tools/ietf-cli/ r32
MASTER_SITES=	https://spacehopper.org/mirrors/

MODULES=	lang/python
MODPY_BUILDDEP=	No

NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	net/rsync \
		devel/xdg-utils

PKG_ARCH=	*

MODPY_ADJ_FILES= ietf

post-extract:
	perl -pi -e 's/\r$$//g' ${WRKSRC}/README

do-configure:
	${SUBST_CMD} ${WRKSRC}/ietf{,.config}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/ietf
	${INSTALL_SCRIPT} ${WRKSRC}/ietf ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ietf
	${INSTALL_DATA} ${WRKSRC}/ietf.config ${PREFIX}/share/examples/ietf

.include <bsd.port.mk>
