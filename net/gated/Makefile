# $OpenBSD: Makefile,v 1.8 2000/04/05 18:35:46 brad Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

# http://www.freebsd.org/cgi-bin/cvsweb.cgi/ports/net/gated/Makefile
# see commit message for rev 1.22 of the Makefile

BROKEN=		"Security hole (buffer overflow possibly yielding root)"

DISTNAME=	gated-3-5-11
PKGNAME=	gated-3.5.11
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.gated.merit.edu/net-research/gated/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"commercial software"
PERMIT_PACKAGE_FTP=	"commercial software"
PERMIT_DISTFILES_CDROM=	"commercial software"
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	gated

.include <bsd.port.mk>
