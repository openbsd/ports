# $OpenBSD: Makefile,v 1.15 2002/10/27 17:21:39 naddy Exp $

COMMENT=	"visual mail, user and print face server"

DISTNAME=	faces-1.6.1
CATEGORIES=	mail

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.cs.indiana.edu/pub/faces/faces/ \
		ftp://odie.physik2.uni-rostock.de/pub/
EXTRACT_SUFX=	.tar.Z

WRKDIST=	$(WRKDIR)/faces
MAN1=		compface.1 faces.1 face_update.1
MAN3=		compface.3 

post-extract:
	@cd ${WRKSRC} && cp Makefile.dist Makefile

NO_REGRESS=	Yes

.include <bsd.port.mk>
