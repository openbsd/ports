# $OpenBSD: Makefile,v 1.3 1999/02/21 04:26:14 marc Exp $
#

DISTNAME=	faces-1.6.1
CATEGORIES=	mail

NEED_VERSION=	1.64
NO_CDROM=	"NOFEE:	Can not sell"

MASTER_SITES=	ftp://ftp.cs.indiana.edu/pub/faces/faces/ \
		ftp://odie.physik2.uni-rostock.de/pub/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

WRKSRC=		$(WRKDIR)/faces
MAN1=		compface.1 faces.1 face_update.1
MAN3=		compface.3 

post-install:
	${LDCONFIG} -m ${PREFIX}/lib
.if !defined(NOMANCOMPRESS)
	@${RM} ${PREFIX}/man/man1/uncompface.1 ${PREFIX}/man/man3/uncompface.3
	@ln -fs compface.1.gz ${PREFIX}/man/man1/uncompface.1.gz
	@ln -fs compface.3.gz ${PREFIX}/man/man3/uncompface.3.gz
.endif

.include <bsd.port.mk>
