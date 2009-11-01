# $OpenBSD: Makefile,v 1.9 2009/11/01 22:37:41 jasper Exp $

BROKEN=			security issues

COMMENT-server=		Darwin Streaming Server
COMMENT-admin=		Darwin Streaming Server, Admin Interface
COMMENT-examples=	Darwin Streaming Server, Example Movies
COMMENT-proxy=		Darwin Streaming Proxy

VERSION=	4.1.3
DISTNAME=	DSS-4_1_3.src

ONLY_FOR_ARCHS=		i386

PKGNAME=		dss-${VERSION}
FULLPKGNAME-server=	dss-server-${VERSION}p1
PKGNAME-admin=		dss-admin-${VERSION}
PKGNAME-examples=	dss-examples-${VERSION}
PKGNAME-proxy=		dss-proxy-${VERSION}

CATEGORIES=    	net

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# Apple Public Source License (APSL)
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No 
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

HOMEPAGE=		http://dss.macosforge.org/

MULTI_PACKAGES=		-server -admin -examples -proxy
SUBPACKAGE?=		-server

RUN_DEPENDS-admin=	:p5-Net-SSLeay->=1.03:security/p5-Net_SSLeay

WRKTMP=		${WRKDIR}/tmp

EXAMPLESDIR=	${PREFIX}/share/examples/dss
ADMINHTMLDIR=	${PREFIX}/share/dss/AdminHtml
DOCDIR=		${PREFIX}/share/doc/dss

FETCH_MANUALLY=	"The source to this port may not be automatically fetched" \
		"due to licensing restrictions. You MUST fetch the source" \
		"from http://developer.apple.com/darwin/projects/streaming/ " \
		"manually." \
		"" \
		"Once ${DISTFILES} has been downloaded, move it to" \
		"${FULLDISTDIR} and then restart this build." \
		""

pre-configure:
	@find ${WRKSRC} -type f | xargs perl -pi -e \
		"s|/usr/local|${PREFIX}|g"
	@find ${WRKSRC} -type f | xargs perl -pi -e \
		"s|/etc|${SYSCONFDIR}|g"
	@find ${WRKSRC} -type f | xargs perl -pi -e \
		's,^CCFLAGS \+= -O3,#CCFLAGS \+= -O3,g'
	@find ${WRKSRC} -type f | xargs perl -pi -e \
		's,-g -Wall,-Wall,g'

do-build:
	cd ${WRKSRC}; env CC="${CC}" CFLAGS="${CFLAGS}" ./Buildit

post-build:
	rm -fr ${WRKTMP}/{server,proxy}
	mkdir -p ${WRKTMP}/{server,proxy}
	cd ${WRKSRC}; ./DSS_MakeRoot -f ${WRKTMP}/server
	cd ${WRKSRC}; ./DSS_MakeProxyRoot ${WRKTMP}/proxy
	cp ${WRKSRC}/qtaccess ${WRKTMP}/server

do-install:
	${INSTALL_PROGRAM} \
		${WRKTMP}/proxy/StreamingProxy \
		${PREFIX}/sbin/streamingproxy
	${INSTALL_PROGRAM} ${WRKTMP}/server/qtpasswd ${PREFIX}/bin
	${INSTALL_PROGRAM} \
		${WRKTMP}/server/DarwinStreamingServer \
		${PREFIX}/sbin/streamingserver
	${INSTALL_PROGRAM} \
		${WRKTMP}/server/MP3Broadcaster \
		${PREFIX}/bin/mp3broadcaster
	${INSTALL_PROGRAM} \
		${WRKTMP}/server/PlaylistBroadcaster \
		${PREFIX}/bin/playlistbroadcaster
	${INSTALL_PROGRAM} \
		${WRKTMP}/server/streamingadminserver.pl \
		${PREFIX}/sbin/streamingadminserver
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKTMP}/proxy/StreamingProxy.html ${DOCDIR}
	${INSTALL_DATA} ${WRKTMP}/server/readme.pdf ${DOCDIR}
	${INSTALL_DATA} ${WRKTMP}/server/3rdPartyAcknowledgements.rtf ${DOCDIR}
	${INSTALL_DATA_DIR} ${ADMINHTMLDIR}
	${INSTALL_DATA_DIR} ${ADMINHTMLDIR}/images 
	${INSTALL_DATA_DIR} ${ADMINHTMLDIR}/includes 
	${INSTALL_DATA} \
		${WRKTMP}/server/AdminHtml/*.{pl,cgi,html} \
		${ADMINHTMLDIR}
	${INSTALL_DATA} \
		${WRKTMP}/server/AdminHtml/images/*.gif \
		${ADMINHTMLDIR}/images
	${INSTALL_DATA} \
		${WRKTMP}/server/AdminHtml/includes/*.js \
		${ADMINHTMLDIR}/includes
.for lang in en de fr ja
	${INSTALL_DATA_DIR} ${ADMINHTMLDIR}/html_${lang}
	${INSTALL_DATA} \
		${WRKTMP}/server/AdminHtml/html_${lang}/* \
		${ADMINHTMLDIR}/html_${lang}
.endfor
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} \
		${WRKTMP}/proxy/streamingproxy.conf \
		${EXAMPLESDIR}
	${INSTALL_DATA} \
		${WRKTMP}/server/streamingserver.xml \
		${EXAMPLESDIR}
	${INSTALL_DATA} \
		${WRKTMP}/server/relayconfig.xml-Sample \
		${EXAMPLESDIR}/relayconfig.xml
.for file in qtaccess qtusers qtgroups
	${INSTALL_DATA} ${WRKTMP}/server/${file} ${EXAMPLESDIR}
.endfor
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/movies
	${INSTALL_DATA} ${WRKTMP}/server/*.mov ${EXAMPLESDIR}/movies
	${INSTALL_DATA} ${WRKTMP}/server/*.mp3 ${EXAMPLESDIR}/movies
	${INSTALL_DATA} ${WRKTMP}/server/*.mp4 ${EXAMPLESDIR}/movies

.include <bsd.port.mk>
