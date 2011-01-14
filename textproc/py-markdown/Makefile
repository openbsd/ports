# $OpenBSD: Makefile,v 1.1.1.1 2011/01/14 23:36:45 ajacoutot Exp $

COMMENT=	Python implementation of Markdown

MODPY_EGG_VERSION= 2.0.3
DISTNAME=	Markdown-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}

CATEGORIES=	textproc

HOMEPAGE=	http://www.freewisdom.org/projects/python-markdown

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pypi.python.org/packages/source/M/Markdown/

MODULES=	lang/python

NO_REGRESS=	Yes

MODPY_ADJ_FILES= markdown/extensions/headerid.py \
		markdown/extensions/codehilite.py \
		markdown/extensions/meta.py

.include <bsd.port.mk>
