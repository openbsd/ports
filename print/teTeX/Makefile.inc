# $OpenBSD: Makefile.inc,v 1.2 2003/02/19 12:14:45 sturm Exp $

HOMEPAGE=	http://www.tug.org/tetex/
MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=systems/unix/teTeX/2.0/distrib/}
DIST_SUBDIR=	teTeX

TEXMF_DIR=	${PREFIX}/share/texmf
