# $OpenBSD: Makefile,v 1.23 2007/09/15 23:29:58 merdely Exp $

COMMENT=	scan C/C++ source code for security problems

DISTNAME=	its4-1.1.1
CATEGORIES=	security
MASTER_SITES=	#see-do-fetch-target
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	commercial. licensing restrictions.
PERMIT_PACKAGE_FTP=	commercial. licensing restrictions.
PERMIT_DISTFILES_CDROM=	commercial. licensing restrictions.
PERMIT_DISTFILES_FTP=	commercial. licensing restrictions.
WANTLIB=		c m stdc++

CONFIGURE_STYLE= gnu dest old

CONFIGURE_ARGS=	--datadir='$${DESTDIR}${PREFIX}/share/its4' \
		--with-cpp="${CXX}"

WRKDIST=	${WRKDIR}/its4

NO_REGRESS=	Yes

FETCH_MANUALLY=	"The source to this port may not be automatically fetched" \
		"due to licensing restrictions. You MUST fetch the source" \
		"manually after reading and agreeing to the license at:" \
		"" \
		"    http://www.cigital.com/its4/" \
		"" \
		"Once ${DISTFILES} has been downloaded, move it to ${FULLDISTDIR}" \
		"and then restart this build." \
		""

post-install:
	@strip ${PREFIX}/bin/its4

.include <bsd.port.mk>
