# $OpenBSD: Makefile,v 1.21 2019/07/14 02:16:51 naddy Exp $

COMMENT =	streaming audio server for Squeezebox network music players

V =		7.3.3
PKGNAME =	squeezecenter-${V}
DISTNAME =	squeezecenter-${V}-noCPAN
REVISION =	8
CATEGORIES =	audio net

HOMEPAGE =	http://wiki.slimdevices.com/index.php/SqueezeCenter

# Main software is GPLv2, supplied with some CPAN modules packaged,
# but unfortunately also with proprietary (required) firmware, also
# image files/fonts etc which may not be redistributed without an
# explicit permission being granted.
PERMIT_PACKAGE =	No
PERMIT_DISTFILES =	No

EXTRACT_SUFX =	.tgz

MASTER_SITES =	http://downloads.slimdevices.com/SqueezeCenter_v${V}/

WRKDIST =	${WRKDIR}/${DISTNAME:S/.no-cpan-arch//}

# take care, squeezecenter often depends on internals of perl
# modules rather than documented APIs; as a result things often
# break if dependencies get updated.
#
RUN_DEPENDS =	audio/flac \
		audio/lame \
		audio/wavpack \
		databases/mariadb,-server \
		devel/p5-Cache-Cache>=1.04 \
		devel/p5-Carp-Clan>=5.3 \
		devel/p5-Class-Accessor>=0.31 \
		devel/p5-Class-C3>=0.11 \
		devel/p5-Class-Data-Accessor>=0.03 \
		devel/p5-Class-Data-Inheritable>=0.04 \
		devel/p5-Class-Inspector>=1.16 \
		www/p5-CGI \
		databases/p5-DBD-mysql>=3.0002 \
		databases/p5-DBI>=1.604 \
		databases/p5-DBIx-Class>=0.07001 \
		databases/p5-DBIx-Migration>=0.05 \
		devel/p5-Data-Dump>=1.06 \
		www/p5-Data-URIEncode>=0.11 \
		security/p5-Digest-SHA1>=2.11 \
		textproc/p5-Encode-Detect>=1.01 \
		devel/p5-Exporter-Lite>=0.02 \
		devel/p5-File-BOM>=0.13 \
		devel/p5-File-Next>=1.02 \
		devel/p5-File-ReadBackwards>=1.04 \
		devel/p5-File-Slurp>=9999.12 \
		sysutils/p5-File-Which>=0.05 \
		graphics/p5-GD>=2.35 \
		www/p5-HTML-Parser>=3.48 \
		devel/p5-IO-String>=1.07 \
		converters/p5-JSON-XS>=1.5 \
		converters/p5-JSON-XS-VersionOneAndTwo>=0.31 \
		www/p5-libwww>=5.805 \
		devel/p5-Log-Log4perl>=1.07 \
		math/p5-Math-VecStat>=0.08 \
		net/p5-Net-DNS>=0.58 \
		net/p5-Net-IP>=1.24 \
		net/p5-Net-UPnP>=1.2.1 \
		devel/p5-PAR>=0.970 \
		devel/p5-Path-Class>=0.13 \
		devel/p5-POE>=0.9989 \
		devel/p5-POE-XS-Queue-Array>=0.002 \
		devel/p5-Proc-Background>=1.08 \
		databases/p5-SQL-Abstract>=1.20 \
		textproc/p5-Template>=2.15 \
		textproc/p5-Text-Unidecode>=0.04 \
		devel/p5-Tie-Cache-LRU>=0.21 \
		devel/p5-Tie-Cache-LRU-Expires>=0.54 \
		devel/p5-Tie-IxHash>=1.21 \
		devel/p5-Tie-LLHash>=1.003 \
		devel/p5-Tie-RegexpHash>=0.13 \
		devel/p5-Time-TimeDate>=1.16 \
		www/p5-URI>=1.35 \
		www/p5-URI-Find>=0.16 \
		textproc/p5-XML-Parser>=2.34 \
		textproc/p5-XML-Simple>=2.15 \
		devel/p5-YAML-Syck>=0.64 \
		textproc/p5-XML-XSPF
 
# remove squeezecenter's redistributed CPAN modules, we use our own.
# remove MySQL error message file, it's for a specific version.
pre-configure:
	rm ${WRKSRC}/MySQL/errmsg.sys
	@ln -s ${TRUEPREFIX}/share/mysql/english/errmsg.sys \
	    ${WRKSRC}/MySQL/errmsg.sys  
	rm -r ${WRKSRC}/CPAN
	@${SUBST_CMD} -m 0644 -c ${FILESDIR}/Custom.pm \
	    ${WRKSRC}/Slim/Utils/OS/Custom.pm

NO_BUILD =	yes
NO_TEST =	yes
PMDIR =		libdata/perl5/site_perl/Slim
SSLIBDIR =	libdata/squeezecenter
SSSHAREDIR =	share/squeezecenter

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/slimserver.pl ${PREFIX}/bin/slimserver.pl
	${INSTALL_PROGRAM} ${WRKSRC}/scanner.pl ${PREFIX}/bin/scanner.pl
	${INSTALL_DATA_DIR} ${PREFIX}/{${PMDIR},${SSLIBDIR},${SSSHAREDIR}}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/squeezecenter
.for i in types convert modules
	${INSTALL_DATA} ${WRKSRC}/$i.conf ${PREFIX}/share/examples/squeezecenter
.endfor
	cd ${WRKSRC}/Slim/; tar cf - * | tar xf - -C ${PREFIX}/${PMDIR}/
	cd ${WRKSRC}/lib/; tar cf - * | tar xf - -C ${PREFIX}/${SSLIBDIR}/
	cd ${WRKSRC}/; tar cf - Firmware Graphics HTML IR MySQL Plugins \
	    SQL strings.txt | tar xf - -C ${PREFIX}/${SSSHAREDIR}/
	touch ${PREFIX}/share/examples/squeezecenter/empty
	find ${PREFIX} -name '*.orig' -print0 | xargs -0 rm

.include <bsd.port.mk>
