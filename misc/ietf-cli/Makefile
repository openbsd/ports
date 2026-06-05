COMMENT=	command-line tools to work with RFCs and Internet Drafts

GH_ACCOUNT=	paulehoffman
GH_PROJECT=	ietf-cli
#GH_TAGNAME=	1.32
GH_COMMIT=	a4a84d0df3c573da4f5e4ad50ff1c9d0446886f9
DISTNAME=	ietf-cli-1.32pre0

CATEGORIES=	misc net books

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
