# $OpenBSD: Makefile,v 1.13 2001/05/06 01:46:16 lebel Exp $

COMMENT=	"visual mail, user and print face server"

DISTNAME=	faces-1.6.1
CATEGORIES=	mail
NEED_VERSION=	1.402

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

.include <bsd.port.mk>
