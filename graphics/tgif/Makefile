# $OpenBSD: Makefile,v 1.20 2004/04/09 09:47:10 sturm Exp $

COMMENT=	"two-dimensional drawing tool and hyper-object browser"

DISTNAME=	tgif-QPL-4.1.43
PKGNAME=	${DISTNAME:S/-QPL//}
CATEGORIES=	graphics

MASTER_SITES=	ftp://bourbon.usc.edu/pub/tgif/ \
		${MASTER_SITE_SOURCEFORGE:=tgif/}

HOMEPAGE=	http://bourbon.usc.edu:8001/tgif/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# Trolltech Q License
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

RUN_DEPENDS=	::graphics/netpbm

CONFIGURE_STYLE=imake

MAKE_FLAGS=	MODULE_CFLAGS="${CFLAGS}"

TGIFDOC=	${PREFIX}/share/doc/tgif
DEMO_FILES=	an-sr-flip-flop.obj launch-demo-1.obj \
		fonts.obj launch-demo.obj keys.obj slide-demo.obj example.tex
READMES=	Copyright License HISTORY README

post-extract:
	@rm -f ${WRKDIR}/${DISTNAME}/Tgif.tmpl
	@cp ${WRKDIR}/${DISTNAME}/Tgif.tmpl-openbsd \
		${WRKDIR}/${DISTNAME}/Tgif.tmpl

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${TGIFDOC}
	cd ${WRKSRC} ;\
		${INSTALL_DATA} ${DEMO_FILES} ${TGIFDOC} ;\
		${INSTALL_DATA} ${READMES} ${TGIFDOC}

.include <bsd.port.mk>
