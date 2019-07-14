# $OpenBSD: Makefile,v 1.6 2019/07/14 02:16:52 naddy Exp $

COMMENT=	obfuscate passwords for VMware RemoteDisplay.vnc.key

DISTNAME=	vncpassword
PKGNAME=	vmware-vncpasswd-0.0

CATEGORIES=	misc
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	http://communities.vmware.com/docs/DOC-7535

# no license for vmware-vncpasswd.c; other files are ISC/PD
PERMIT_PACKAGE=		missing license
PERMIT_DISTFILES=	missing license

WANTLIB=	c

MASTER_SITES=	https://spacehopper.org/mirrors/
#MASTER_SITES=	http://communities.vmware.com/servlet/JiveServlet/download/7535-4-13355/
EXTRACT_SUFX=	.zip

NO_TEST=		Yes

do-configure:
	cp ${FILESDIR}/Makefile ${WRKSRC}/

.include <bsd.port.mk>
