# $OpenBSD: iconv.port.mk,v 1.1 2001/09/23 05:29:47 brad Exp $

LIB_DEPENDS+=	iconv.2:libiconv-*:converters/libiconv
RUN_DEPENDS+=	:libiconv-*:converters/libiconv
