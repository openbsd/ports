# $OpenBSD: Makefile,v 1.6 2015/12/22 23:57:13 nigel Exp $

COMMENT=	wrapper for LaTeX and friends

MODPY_EGG_VERSION=	1.4
DISTNAME=	rubber-${MODPY_EGG_VERSION}

CATEGORIES=	textproc print

HOMEPAGE=	https://launchpad.net/rubber/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/trunk/${MODPY_EGG_VERSION}/+download/

MODULES=	lang/python

BUILD_DEPENDS=	print/texinfo \
		print/texlive/base
RUN_DEPENDS=	print/texlive/base

# makeinfo: unknown option -- info
pre-configure:
	sed -i -e 's,makeinfo,gmakeinfo,g;' \
		-e 's,texi2dvi,gtexi2dvi,g;' ${WRKSRC}/setup.py

do-test:
	cd ${WRKSRC}/tests && /bin/sh ./run.sh

.include <bsd.port.mk>
