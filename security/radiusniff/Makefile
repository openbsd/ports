# $OpenBSD: Makefile,v 1.1.1.1 2000/04/13 21:16:52 turan Exp $
# Original from: FreeLSD <freelsd@freelsd.net>

DISTNAME=		radiusniff-0.2
CATEGORIES=     	security

MAINTAINER=		nny@sinister.com

PERMIT_PACKAGE_CDROM=	"not specified, vague license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"not specified, vague license"
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tgz
MASTER_SITES=		http://adm.freelsd.net/ADM/

WRKSRC=			${WRKDIR}/radiusniff-0.2

NO_CONFIGURE=		yes

do-build:
			(cd ${WRKSRC} ; ${CC} -DOPENBSD -DDICTIONARY_FILENAME='"dictionary"' -I/usr/local/include -L/usr/local/lib -o radiusniff radiusniff.c md5.c -lpcap -lresolv)

do-install:
			${INSTALL_PROGRAM} ${WRKSRC}/radiusniff ${PREFIX}/bin

.include <bsd.port.mk>
