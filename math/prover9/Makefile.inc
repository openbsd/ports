# $OpenBSD: Makefile.inc,v 1.1.1.1 2011/03/07 22:26:24 jasper Exp $

CATEGORIES ?=	math

HOMEPAGE ?=	http://www.cs.unm.edu/~mccune/prover9/

# GPLv2
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES?=		lang/python
