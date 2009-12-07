# $OpenBSD: Makefile,v 1.2 2009/12/07 19:16:02 sthen Exp $

COMMENT=	obfuscate passwords for VMware RemoteDisplay.vnc.key

DISTNAME=	vncpassword
PKGNAME=	vmware-vncpasswd-0.0

CATEGORIES=	misc

HOMEPAGE=	http://communities.vmware.com/docs/DOC-7535

# no license for vmware-vncpasswd.c; other files are ISC/PD
PERMIT_PACKAGE_CDROM=	missing license
PERMIT_PACKAGE_FTP=	missing license
PERMIT_DISTFILES_CDROM=	missing license
PERMIT_DISTFILES_FTP=	missing license

WANTLIB=	c

MASTER_SITES=	http://spacehopper.org/mirrors/
#MASTER_SITES=	http://communities.vmware.com/servlet/JiveServlet/download/7535-4-13355/
EXTRACT_SUFX=	.zip

NO_REGRESS=		Yes

do-configure:
	cp ${FILESDIR}/Makefile ${WRKSRC}/

.include <bsd.port.mk>
