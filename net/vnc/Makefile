# $OpenBSD: Makefile,v 1.6 2000/03/24 22:11:53 espie Exp $
# $FreeBSD: Makefile,v 1.10 1999/02/18 16:05:47 steve Exp $

DISTNAME=       vnc-3.3.2r3_unixsrc
PKGNAME=        vnc-3.3.2r3
CATEGORIES=	net
NEED_VERSION=	1.191
MASTER_SITES=   http://www.uk.research.att.com/vnc/dist/
DISTFILES=	vnc-3.3.2r3_unixsrc.tgz vnc-3.3.2_doc.tgz

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

EXTRACT_ONLY=	vnc-3.3.2r3_unixsrc.tgz
IGNOREFILES=	${DISTFILES}

WRKDIST=		${WRKDIR}/vnc_unixsrc

USE_IMAKE=	yes

ALL_TARGET=    	World

# We have to frob a few things, and we want our own permissions, so it's easier
# to do the install ourselves.
post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Xvnc/programs/Xserver/Xvnc ${PREFIX}/bin/Xvnc
	${INSTALL_PROGRAM} ${WRKSRC}/vncviewer/vncviewer ${PREFIX}/bin/vncviewer
	${INSTALL_PROGRAM} ${WRKSRC}/vncpasswd/vncpasswd ${PREFIX}/bin/vncpasswd
	sed  -e s%/usr/local/vnc/classes%${PREFIX}/share/vnc/classes% \
		< ${WRKSRC}/vncserver \
		> ${WRKSRC}/vncserver.local
	${INSTALL_SCRIPT} ${WRKSRC}/vncserver.local ${PREFIX}/bin/vncserver
# The documentation comes with bogus ownerships; this is a little leaky security-wise
	mkdir -p ${PREFIX}/share/doc/vnc
	tar -C ${PREFIX}/share/doc/vnc -xzf ${DISTDIR}/vnc-3.3.2_doc.tgz
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/vnc
# Go install Java classes
	mkdir -p ${PREFIX}/share/vnc
	cp -R ${WRKSRC}/classes ${PREFIX}/share/vnc

.include <bsd.port.mk>
