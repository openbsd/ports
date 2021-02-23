# $OpenBSD: Makefile,v 1.7 2021/02/23 19:39:30 sthen Exp $

COMMENT=	command-line tools to work with RFCs and Internet Drafts

GH_ACCOUNT=	paulehoffman
GH_PROJECT=	ietf-cli
GH_TAGNAME=	4b2b52dc333b6b59403b102349572f8af1b20a52
DISTNAME=	${GH_PROJECT}-1.16
REVISION=	1

CATEGORIES=	misc net books

HOMEPAGE=	https://trac.tools.ietf.org/tools/ietf-cli/

# WTFPL
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_BUILDDEP=	No

NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	devel/xdg-utils \
		net/rsync

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
