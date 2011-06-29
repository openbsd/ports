# $OpenBSD: Makefile.inc,v 1.2 2011/06/29 18:11:25 jasper Exp $

CATEGORIES ?=	math

HOMEPAGE ?=	http://www.cs.unm.edu/%7Emccune/prover9/

# GPLv2
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES?=		lang/python
