# $OpenBSD: Makefile,v 1.6 2001/07/28 20:13:08 pvalchev Exp $
# Original from: FreeLSD <freelsd@freelsd.net>

COMMENT=		"radius sniffer"

DISTNAME=		radiusniff-0.2
CATEGORIES=     	security
MAINTAINER=		ports@openbsd.org
NEED_VERSION=		1.402

PERMIT_PACKAGE_CDROM=	"not specified, vague license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"not specified, vague license"
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tgz
MASTER_SITES=		http://adm.freelsd.net/ADM/

WRKSRC=			${WRKDIR}/radiusniff-0.2

do-build:
	cd ${WRKSRC} && ${CC} -DOPENBSD \
	-DDICTIONARY_FILENAME=\"${PREFIX}/share/radiusniff/dictionary\" \
	-DCLIENTS_FILENAME=\"${PREFIX}/share/radiusniff/clients\" \
	-I${LOCALBASE}/include -L${LOCALBASE}/lib -o radiusniff \
	radiusniff.c md5.c -lpcap -lresolv

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/radiusniff ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/radiusniff/
	${INSTALL_DATA} ${WRKSRC}/{dictionary,clients} ${PREFIX}/share/radiusniff

.include <bsd.port.mk>
