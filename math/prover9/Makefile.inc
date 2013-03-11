# $OpenBSD: Makefile.inc,v 1.3 2013/03/11 11:23:56 espie Exp $

CATEGORIES ?=	math

HOMEPAGE ?=	http://www.cs.unm.edu/%7Emccune/prover9/

# GPLv2
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES?=		lang/python
