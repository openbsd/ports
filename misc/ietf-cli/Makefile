# $OpenBSD: Makefile,v 1.10 2021/11/29 11:18:32 kn Exp $

COMMENT=	command-line tools to work with RFCs and Internet Drafts

GH_ACCOUNT=	paulehoffman
GH_PROJECT=	ietf-cli
GH_TAGNAME=	1.18

CATEGORIES=	misc net books

HOMEPAGE=	https://trac.tools.ietf.org/tools/ietf-cli/

MAINTAINER=	Klemens Nanni <kn@openbsd.org>

# WTFPL
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	devel/xdg-utils \
		net/rsync

PKG_ARCH=	*

MODPY_ADJ_FILES= ietf

do-configure:
	${SUBST_CMD} ${WRKSRC}/{ietf{,.config},README}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/ietf
	${INSTALL_SCRIPT} ${WRKSRC}/ietf ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ietf
	${INSTALL_DATA} ${WRKSRC}/ietf.config ${PREFIX}/share/examples/ietf

.include <bsd.port.mk>
